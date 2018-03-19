var gulp = require('gulp');
var concat = require('gulp-concat');
var minify = require('gulp-minify');
var cleanCss = require('gulp-clean-css');
var base64 = require('gulp-base64');
 
gulp.task('Bundle-JS', function () {	
console.log('Hello Before');
    return gulp.src([
	          './assets/js/jquery.min.js'
             ,'./assets/js/bootstrap.min.js'
             , './assets/js/waypoints.min.js'
             , './assets/js/jquery.scrollTo.min.js'
             , './assets/js/jquery.localScroll.min.js'
             , './assets/js/jquery.magnific-popup.min.js'
             , './assets/js/validate.min.js'
             , './assets/js/common.min.js'
             , './assets/js/slick.min.js'  
    ])
		.pipe(concat('BundleJS-min.js'))
        .pipe(gulp.dest('Bundles/js'));
		
});


gulp.task('default', ['Bundle-JS']);