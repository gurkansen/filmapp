<div id="kategoriler" class="view tab">

  <div class="navbar">
    <div class="navbar-inner">
      <div class="left sliding">

      </div>
      <div class="center sliding">Kategoriler</div>
      <div class="right"></div>
    </div>
  </div>

  <div class="pages navbar-through">
    <div data-page="media-lists" class="page">
      <div class="page-content">

        <div class="content-block-title">
          Kategoriler
        </div>


        <div class="list-block">
          <ul>

            <?php foreach(kategori_listele() as $kategori) { ?>

            <li>
              <div class="item-content">
                <div class="item-media"><i class="fa <?=$kategori['kategori_ikon']?> fa-2x"></i></div>
                <div class="item-inner">
                  <div class="item-title"><?=$kategori['kategori_adi']?></div>
                </div>
              </div>
            </li>

            <?php } ?>

          </ul>
        </div>


      </div>
    </div>
  </div>

</div>
