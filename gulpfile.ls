require! {
  'gulp'
  'gulp-plumber': 'plumber'
  'gulp-raml2html': 'raml2html'
}

gulp.task 'Ramls' ->
  gulp.src ['product/v1.0/products.raml']
    .pipe plumber!
    .pipe raml2html!
    .pipe gulp.dest 'published'

gulp.task 'default', [ 'Ramls']
