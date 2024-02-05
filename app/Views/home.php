<?php
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
                <!--<p>Welcome, <?// echo $username; ?></p>-->
                <a class="" href="<?php echo base_url('/logout'); ?>">Logout</a>
            </div>
        </div>
    </div>
</nav>

<div class="container">
    <div class="row">
    <div class="col-12">
        <div class="card book-shelf m-2 p-4">
        <form id="formBook" id>
            <h3 class="fw-bold">Books</h3>
            <?php
             $apiKey = 'AIzaSyAeW6qlHFOpcqW0dIWYLH764rYHvg11KyU';
             $query = 'Komputer';
         
             $response = file_get_contents("https://www.googleapis.com/books/v1/volumes?q=".urlencode($query)."&key=".$apiKey);
             $data = json_decode($response, true);

                if ($data) {
                    // Mulai output HTML
                    echo "<ul>";
                
                    // Loop melalui setiap buku dalam data
                    foreach ($data['items'] as $book) {
                        // Ambil judul buku
                        $title = $book['volumeInfo']['title'];
                
                        // Ambil link gambar sampul buku jika ada
                        $coverImage = isset($book['volumeInfo']['imageLinks']['thumbnail']) ? $book['volumeInfo']['imageLinks']['thumbnail'] : '';
                
                        // Tampilkan judul dan gambar sampul buku
                        echo "<li>";
                        echo "<h2>$title</h2>";
                        if ($coverImage) {
                            echo "<img src=\"$coverImage\" alt=\"$title\">";
                        }
                        echo "<br>";
                        echo "<a href=\"".$book['volumeInfo']['infoLink']."\">More Info</a>";
                        echo "</li>";
                    }
                
                    echo "</ul>";
                } else {
                    echo "Tidak ada data yang ditemukan.";
                }
            ?>
        </form>
        </div>
        

      </div>
    </div>
</div>

<?php
echo view('partials/footer');
?>