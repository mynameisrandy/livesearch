// Our Modules
var gulp = require('gulp');
var sass = require('gulp-sass');
var refresh = require('gulp-refresh');

// HTML Task
var html = 'index.html';
gulp.task('html', function() {
	// Watch our index.html file
	gulp.src('index.html')
		// Refresh changes
		.pipe(refresh(html))
});


// HTML Task
var php = 'displayPokemon.php';
gulp.task('php', function() {
	// Watch our index.html file
	gulp.src('displayPokemon.php')
		// Refresh changes
		.pipe(refresh(php))
});


// Sass Task
gulp.task('sass', function() {
	// Watch Sass Folder
	gulp.src('sass/*.scss')
		// Output style our css
   		.pipe(sass({outputStyle: 'expanded'})
   		// Check Error
   		.on('error', sass.logError))
   		// Destination into css folder
    	.pipe(gulp.dest('css/'))
    	// Refresh changes
    	.pipe(refresh())
});
 
// Watch our files
gulp.task('watch', function() {
	// Server
 	refresh.listen()
 	// Watch Sass Task
 	gulp.watch('sass/*.scss', ['sass'])
 	gulp.watch('index.html', ['html'])
 	gulp.watch('displayPokemon.php', ['php'])
});

// Run gulp
gulp.task('default', ['html','sass','php', 'watch']);




