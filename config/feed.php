<?php

return [

	'feeds' => [
		'main' => [
			'url' => '/feed',
			'title' => 'blog.dev - all blogposts',
			'items' => \App\Models\Post::class . '@getFeedItems',
		],

		'php' => [
			'url' => '/feed/php',
			'title' => 'blog.dev - all php blogposts',
			'items' => \App\Models\Post::class . '@getPhpFeedItems',
		],

		'originals' => [
			'url' => '/feed/originals',
			'title' => 'blog.dev - all originally written blogposts',
			'items' => \App\Models\Post::class . '@getOriginalContentFeedItems',
		],
	],

];
