require! {
  'gulp'
  'gulp-plumber': 'plumber'
  'gulp-raml2html': 'raml2html'
}

gulp.task 'Ramls' ->
  gulp.src ['product/v1.0/products.raml','Taxonomy/v1.0d/taxonomy.raml']
    .pipe plumber!
    .pipe raml2html!
    .pipe gulp.dest 'published'

gulp.task 'default', [ 'Ramls']
