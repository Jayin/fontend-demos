gulp = require 'gulp'
htmlOptimizer = require 'gulp-html-optimizer'

DistBase = './dist/'

gulp.task 'copy', ()->
    gulp.src './css/**/*'
        .pipe gulp.dest(DistBase+'css/')

    gulp.src './js/**/*'
        .pipe gulp.dest(DistBase+'js/')

    gulp.src './img/**/*'
        .pipe gulp.dest(DistBase+'img/')


gulp.task 'build',['copy'], ()->
    gulp.src 'demo1.html'
        .pipe htmlOptimizer
            beautifyTemplate: true
            base64img: true
            trace: true
        .pipe gulp.dest(DistBase)

gulp.task 'watch', ()->
    gulp.watch 'demo1.html', ['build']


gulp.task 'default', ['build', 'watch']