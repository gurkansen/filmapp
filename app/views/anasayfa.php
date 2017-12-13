<div id="anasayfa" class="view main-view active tab">

  <div class="navbar">
    <div class="navbar-inner">
      <div class="left sliding">
        <a href="#" data-ignore-cache="true" class="link icon-only">
          <i class="f7-icons">persons</i>
        </a>
      </div>
      <div class="center sliding">Ana Sayfa</div>
      <div class="right"></div>
    </div>
  </div>

  <div class="pages navbar-through">
    <div data-page="media-lists" class="page">
      <div class="page-content">

        <div class="content-block-title">
         Filmler
        </div>

        <div class="list-block media-list">
          <ul>
            <?php foreach (film_listele() as $film) { ?>


            <li><a href="#" class="item-link item-content">
                <div class="item-media"><img src="<?=$film['film_afis']?>" width="80" height="80"/></div>
                <div class="item-inner">
                  <div class="item-title-row">
                    <div class="item-title"><?=$film['film_adi']?></div>
                    <div class="item-after">$15</div>
                  </div>
                  <div class="item-subtitle"><?=$film['kategori_adi']?></div>
                  <div class="item-text"><?=$film['film_hakkinda']?></div>
                </div></a></li>


              <?php } ?>
          </ul>
        </div>


      </div>
    </div>
  </div>

</div>
