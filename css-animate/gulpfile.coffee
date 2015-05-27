gulp = require 'gulp'
postcss = require 'gulp-postcss'
autoprefixer = require 'autoprefixer-core'

gulp.task 'postcss', ()->
    gulp.src ['./src/**/*.css']
        .pipe postcss [
            autoprefixer browsers: ['last 2 version']
        ]
        .pipe gulp.dest './build/'

gulp.task 'watch', ['postcss'], ()->
    gulp.watch ['./src/**/*'], ['postcss']


gulp.task 'default', ['watch']