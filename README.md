
![Twitter Follow](https://img.shields.io/twitter/follow/arresteddevops.svg?style=social&logo=twitter&label=Follow)
![GitHub issues](https://img.shields.io/github/issues-raw/badges/shields.svg)
[![Netlify Status](https://api.netlify.com/api/v1/badges/341145e6-bd9e-4c22-ad6a-3446684e7868/deploy-status)](https://app.netlify.com/sites/arrested-devops/deploys)
![license](https://img.shields.io/github/license/mashape/apistatus.svg)

## Contributing

Here are the steps to follow to get going as an ADO content contributor (or heck, even a code contributor)

1. Install [Hugo](http://gohugo.io) - *NOTE: Please make sure it is at least version 0.58.3*
2. Clone this repo
3. If you want to fire up a local copy to see your changes as you go, enter this command `hugo server -w --baseUrl="http://localhost:1313"`
4. You probably want to do the previous thing in another pane/window, as it needs to keep running. The -w watches for any changes and rebuilds on the fly. You have to set the baseUrl or it will build it with `www.arresteddevops.com`.
5. If you want to make a new episode, type in `hugo new episode/my-episode-name.md` *Note - it is highly recommended that you follow this pattern rather than duplicating an existing file, as this will ensure you get the latest and greatest required frontmatter elements*

## Episodes

Every episode needs a few images. You need the following

1. **Episode thumbnail** - This must be square, PNG, and 500px by 500px. Enlarge it slightly if you have to. They should be named after the episode name (i.e., `my-episode-name.png`) and stored in the `static/episode/img` folder.
2. **Episode banner** - These need to be PNG, 800px by 420 px. They should be named using the episode name as a template (i.e., `my-episode-name-banner.png`) and stored in the `static/episode/img` folder.
3. **Facebook sharing image** - These need to be PNG, 1200px by 630 px, and named after the episode (i.e., `my-episode-name.png`). They are stored in the `static/img/social/fb` folder.
4. **Guest image(s)** - These need to be PNG, 500px x 500px, and should be named after the guest  file name (i.e., `mstratton.png`). They are stored in the `static/img/guests` folder

When you create a new episode, Hugo will populate the frontmatter of the .md file with a bunch of stuff for you. These are the required items to be sure to populate:

It is HIGHLY recommended to use the `hugo new episode` command to create an episode. For example, `hugo new episode/my-episode-name.md` will create a properly formatted file in `events/my-episode-name.md`.

* **Description** - A string in double quotes. Please make sure that any double quotes are escaped, as such: `\"DevOps\"`
* **podcast_file** - this is the filename of the podcast MP3. You may not have this at the time you are creating an episode page, so that's okay.
* **podcast_duration** - the length of the podcast in minutes:seconds, etc
* **guests** - a comma separated list of the guests, in the format first initial, last name (i.e., `"mbluth", "ssitwell"`). The names should line up to md files in `content/guest`
* **hosts** - a comma separated list of the hosts, in the format first initial, last name (i.e., `"mstratton", "thess"`). The names should line up to md files in `content/host`
* **sponsors** - comma separated list of the sponsors for the episode. Same rules apply as guests, but the data files are in `data/sponsors`
* **explicit** - this is a "yes" or "no" (in quotes) value depending on if the episode has explicit language. If you are not sure, please set it to "yes".
* **episode** - a string for the episode number, i.e., `"42"`
* **episode_image** - the path to the image for this episode for the front page. Example: `episode/img/my-episode-name.png`.
* **episode_banner** - the path to the banner image for the episode. Example: `episode/img/my-episode-name-banner.png`.
* **title** - the title of the episode. It's a string inside double quotes.
* **images** - Array of images for social sharing. Should be one image. Example: `/img/social/fb/my-episode-name.png`
* **aliases** - Array of strings for redirects. The only one you should ever need is for the episode number, i.e., `aliases = ["/27"]`
* **youtube** - the URL of the YouTube video, if there is one. If not, delete this line from the frontmatter of the episode.

## Guests
Guest files are now Markdown files that live in `content/guest`. Use the command `hugo new guest` to create a new guest, using first initial, last name, i.e., `hugo new guest/mbluth.md`.

For full documentation of all the possible fields in a Guest page, see https://github.com/mattstratton/castanet/blob/master/REFERENCE.md#guest-pages

## Show Notes

When writing show notes, here are a few things to consider:

### Avoid using plain-text URL's
Just pasting in a URL is much worse for us SEO-wise, and it's also less delightful for the reader. For example, `[Jill’s awesome talk about recruiting](http://www.thing.com/stuff)` is better than `http://www.thing.com/stuff`

### Embedding tweets
If you are referencing a tweet, please use the built-in shortcode to create a pretty embed for the tweet. You can do this by using the code `{{< tweet 666616452582129664 >}}` where the number is the ID of the tweet (which is the end of the tweeet's URL, for example, `https://twitter.com/spf13/status/666616452582129664`.

The exception to this rule is if you suspect that the tweet might be deleted due to controversy; at that point you might consider a screenshot of the tweet.

## Theme

The Hugo theme used is [Castanet](https://www.github.com/mattstratton/castanet).

### Updating the theme

If there are new versions of [Castanet](https://www.github.com/mattstratton/castanet), all that should be required is to replace the entire `themes/castanet` directory with the new downloaded version.


### Credits

Thanks to Jess Frazelle [@jfrazelle](https://github.com/jfrazelle) for clueing us into the awesome previews with [Netlify](https://www.netlify.com)!
