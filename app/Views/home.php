<?php
use Myth\Auth\Authentication\Authentication;
use Config\Services;

$authentication = Services::authentication();

$username = '';

if ($authentication->check()) {
    $user = $authentication->user();

    $username = $user->username;
}

echo view('partials/header');
?>
<nav>
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="p-2">
                    <a href="#"><img src="assets/img/logo.png" alt=""></a>
                </div>
            
            </div>
            <div class="col d-flex justify-content-end align-items-center text-end w-100">
                <p class="mb-0 me-2">Welcome, <?php echo $username; ?>!</p>
                <a class="" href="<?php echo base_url('/logout'); ?>">Logout</a>
            </div>
        </div>
    </div>
</nav>

<div class="container">
    <div class="row">
    <div class="col-12">
        <div class="card book-shelf m-2 p-4">
        <form id="formBook" action="<?php echo base_url('/home'); ?>" method="POST">
            <h3 class="fw-bold">Books</h3>
            <label class="fw-bold" for="inputTitle">Search</label>
            <div class="form-group mb-4">
                <input type="text" class="border border-black rounded-0 mb-2 p-1" name="search" placeholder="">
                <input type="submit" value="Search">
            </div>
            <div class="row row-cols-2 row-cols-lg-4 g-4 g-lg-3">
            <?php
                function fetchBooks($query, $startIndex = 0, $maxResults = 20) {
                    $api_key = 'AIzaSyAeW6qlHFOpcqW0dIWYLH764rYHvg11KyU'; // Ganti dengan kunci API Google Anda
                    $url = "https://www.googleapis.com/books/v1/volumes?q=" . urlencode($query) . "&startIndex=" . $startIndex .  "&maxResults=" . $maxResults . "&key=" . $api_key;
                    
                    $response = file_get_contents($url);
                    return json_decode($response, true);
                }

                $keyword = isset($_POST["search"]) ? $_POST["search"]: "Komputer";
                $page = isset($_GET['page']) ? $_GET['page'] : 1;
                $maxResults = 20; // Sesuaikan dengan jumlah item per halaman
                $startIndex = ($page - 1) * $maxResults;
                $result = fetchBooks($keyword, $startIndex, $maxResults);
                
                if ($result && isset($result['items'])) {
                    foreach ($result['items'] as $item) {
                        $volumeInfo = $item['volumeInfo'];
                        $title = $volumeInfo['title'];
                        $authors = isset($volumeInfo['authors']) ? implode(", ", $volumeInfo['authors']) : "Unknown";
                        $publisher = isset($volumeInfo['publisher']) ? $volumeInfo['publisher'] : "Unknown";
                        $publishedDate = isset($volumeInfo['publishedDate']) ? $volumeInfo['publishedDate'] : "Unknown";
                        $imageLink = isset($volumeInfo['imageLinks']['thumbnail']) ? $volumeInfo['imageLinks']['thumbnail'] : "NoImageAvailable.jpg";
            ?>
                <div class="col">
                    <div class="card h-100 mb-3">
                        <img src="<?php echo $imageLink; ?>" class="card-img-top h-50" alt="Cover buku">
                        <div class="card-body">
                            <h5 class="card-title"><?php echo $title; ?></h5>
                            <h6 class="card-subtitle mb-2 text-muted">Penulis: <?php echo $authors; ?></h6>
                            <p class="card-text">Penerbit: <?php echo $publisher; ?></p>
                            <p class="card-text">Tahun Terbit: <?php echo $publishedDate; ?></p>
                        </div>
                    </div>
                </div>
            <?php
                    }
                    // Hitung total halaman
                    $totalItems = isset($result['totalItems']) ? $result['totalItems'] : 0;
                    $totalPages = ceil($totalItems / 20); // 20 items per page
            ?>
            </div>
            <!-- Pagination -->
            <nav aria-label="Page navigation example" class="mt-4">
                <ul class="pagination justify-content-center">
                    <li class="page-item <?php echo $page <= 1 ? 'disabled' : ''; ?>">
                        <a class="page-link" href="?page=<?php echo $page <= 1 ? 1 : ($page - 1); ?>" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                            <span class="visually-hidden">Previous</span>
                        </a>
                    </li>
                    <?php
                        // Tampilkan nomor halaman dari $page - 2 hingga $page + 2
                        for ($i = max(1, $page - 2); $i <= min($page + 2, $totalPages); $i++) {
                            $activeClass = ($i == $page) ? 'active' : '';
                    ?>
                        <li class="page-item <?php echo $activeClass; ?>"><a class="page-link" href="?page=<?php echo $i; ?>"><?php echo $i; ?></a></li>
                    <?php } ?>
                    <li class="page-item <?php echo $page >= $totalPages ? 'disabled' : ''; ?>">
                        <a class="page-link" href="?page=<?php echo $page >= $totalPages ? $totalPages : ($page + 1); ?>" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                            <span class="visually-hidden">Next</span>
                        </a>
                    </li>
                </ul>
            </nav>
            <!-- End Pagination -->
            <?php
                } else {
                    echo "Tidak ada buku yang ditemukan.";
                }
            ?>
        </form>
        </div>
    </div>
</div>
<script type="text/javascript" src="<?php echo base_url('assets/js/jquery.js'); ?>"></script>
   
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>
<script type="text/javascript">
    $(document).ready( function () {
    $('#table').DataTable({
        pageLength: 10,
        lengthMenu: [[5, 10, 20, -1], [5, 10, 15, 'All']],
        paging: true,
        scrollX: true,
        searching: false,
        ordering: true,
        stateSave: true,
        language: {
            "lengthMenu": "Show _MENU_" },
    });
} );
</script>

<?php
echo view('partials/footer');
?>
