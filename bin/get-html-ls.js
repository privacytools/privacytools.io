const glob = require('glob');
const pattern = '**/*.html';
const options = {
	'ignore': [
		'_site/**/*.html',
		'node_modules/**/*.html'
	]
};

glob(pattern, options, (error, files) => {
	if (error) throw error;
	process.stdout.write(files.join('\n') + '\n');
});