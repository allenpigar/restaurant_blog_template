<section class="site-section bg-light" id="section-offer">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center mb-5 site-animate">
                <h4 class="site-sub-title">Our Locations</h4>
                <h2 class="display-4">{{each location_pages as loc}} {{ if {loc._index} = 0 }} {{loc._length}}{{end-if}}{{end-each}} Locations. Infinite Zest.</h2>
                <div class="row justify-content-center">
                    <div class="col-md-7">
                        <p class="lead">Find the location nearest to you today. Don't see one near you? <a href="mailto:support@burger.zesty.site">Request one today</a></p>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <div class="owl-carousel site-owl">
					{{each location_pages as loc sort by loc.city }}
                    <div class="item">
                        <div class="media d-block mb-4 text-center site-media site-animate border-0">
							<img src="{{loc.image.getImage()}}" alt="Free Template by colorlib.com" class="img-fluid">
                            <div class="media-body p-md-5 p-4">
								<h5 class="mt-0 h4">{{ loc.city }} </h5>
								<p class="mb-4"> {{loc.address}}</p>
								<p class="mb-0"><a href="{{loc.getUrl()}}" class="btn btn-primary btn-sm">Visit Site</a></p>
                            </div>
                        </div>
                    </div>
					{{end-each}}
                </div>
            </div>
        </div>
    </div>
</section>
