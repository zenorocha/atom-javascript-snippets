module.exports = function(grunt) {
  grunt.initConfig({
    lintspaces: {
      all: {
        src: ['**/*', '!node_modules/**/*'],
        options: {
          editorconfig: '.editorconfig'
        }
      }
    }
  });

  grunt.loadNpmTasks('grunt-lintspaces');

  grunt.registerTask('default', ['lintspaces']);
};