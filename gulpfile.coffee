gulp = require 'gulp'
connect = require 'gulp-connect'
coffee = require 'gulp-coffee'
sass = require 'gulp-sass'

gulp.task 'connect', ->
	connect.server
		port: 1337
		livereload: on
		root: './dist'

gulp.task 'coffee', ->
	gulp.src 'coffee/*.coffee'
	.pipe do coffee
	.pipe gulp.dest 'dist/js'
	.pipe do connect.reload 

gulp.task 'sass', ->
	gulp.src 'scss/*.scss'
		.pipe do sass
		.on 'error', sass.logError
		.pipe gulp.dest 'dist/css'
		.pipe do connect.reload

gulp.task 'watch', ->
	gulp.watch 'coffee/*.coffee', ['coffee']
	gulp.watch 'scss/*.scss', ['sass']

gulp.task 'default', ['coffee', 'sass', 'connect', 'watch']