var gulp = require('gulp');
var concat = require('gulp-concat');
var minify = require('gulp-minify');
var cleanCss = require('gulp-clean-css');
var base64 = require('gulp-base64');

 
gulp.task('Bundle-CSS', function () {	

    return gulp.src([
	          './assets//css/bootstrap.min.css'
             ,'./assets//css/animate.min.css'
             , './assets//css/font-awesome.min.css'
             , './assets//css/styles-min.css'
             , './assets//css/slick/slick-min.css'
             , './assets//css/slick/slick-theme-min.css' 
    ])
		.pipe(concat('BundleCss-min.css'))
        .pipe(gulp.dest('Bundles/css'));
		
});


gulp.task('default', ['Bundle-CSS']);