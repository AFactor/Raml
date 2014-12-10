require! {
  'gulp'
  'gulp-plumber': 'plumber'
  'gulp-raml2html': 'raml2html'
}

gulp.task 'Ramls' ->
  gulp.src ['products/v1.0/products.raml','taxonomy/v1.0/taxonomy.raml','digitalContent/v1.0/digitalcontent.raml','device/v1.0/device.raml']
    .pipe plumber!
    .pipe raml2html!
    .pipe gulp.dest 'published'

gulp.task 'default', [ 'Ramls']
