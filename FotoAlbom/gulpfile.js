var gulp = require('gulp');
var less = require('gulp-less');
var coffee = require('gulp-coffee');
var browserSync = require('browser-sync');
var useref = require('gulp-useref');
var browserify = require('browserify');
var source = require('vinyl-source-stream');
var coffeeify = require('coffeeify');
var sourcemaps = require('gulp-sourcemaps');
var buffer = require('vinyl-buffer');
var stringify = require('stringify');


gulp.task('hello', function() {
    console.log('Helasdasdasdlo');
});

gulp.task('lessToCss',function () {
    return gulp.src('src/style/stylee.less')
        .pipe(less())
        .pipe(gulp.dest('src/style'))
        .pipe(browserSync.reload({
            stream: true
        }))
});

gulp.task('browserify', function() {
    br = browserify({
        entries: ['./src/initialize'],
        debug: true,
        transform: ['coffeeify','stringify'],
        extensions: ['.coffee']
    });
    br.bundle()
        .on('error', function (err) {
            console.log(err.toString());
        })
        .pipe(source('main.js'))
        .pipe(buffer())
        .pipe(sourcemaps.init({loadMaps: true}))
        .pipe(sourcemaps.write('./', {sourceRoot: '../../../'}))
        .pipe(gulp.dest('./src/js'))
        .pipe(browserSync.stream({once: true}));
});

gulp.task('watch',['browserify','browserSync','lessToCss'],function () {
   gulp.watch('src/**/*.+(less|coffee)',['browserify','lessToCss']);
    gulp.watch('src/**/*.html', browserSync.reload);
});

gulp.task('browserSync', function() {
    browserSync({
        server: {
            baseDir: 'src'
        }
    })
});

gulp.task('useref', function(){
    var assets = useref.assets();
    return gulp.src('src/*.html')
        .pipe(assets)
        .pipe(assets.restore())
        .pipe(useref())
        .pipe(gulp.dest('dist'))
});


