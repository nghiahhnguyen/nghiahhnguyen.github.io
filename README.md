# nghiahhnguyen.github.io

Personal academic website built with [al-folio](https://github.com/alshedivat/al-folio), a Jekyll theme for academics.

Live at: https://nghiahhnguyen.github.io/

## Local development

### Prerequisites

- **Ruby 3.3** via Homebrew: `brew install ruby@3.3`
- Gems are installed to the Homebrew prefix (no sudo needed)

### First-time setup

```bash
# Install dependencies (run from a path without spaces, or use the serve script)
./serve.sh
```

The `serve.sh` script handles symlinking the repo to `/tmp/` to avoid native gem compilation issues with OneDrive paths.

### Serving locally

```bash
./serve.sh        # serves at http://localhost:4000/
./serve.sh 4001   # custom port
```

## Deployment

The site deploys via GitHub Actions (`.github/workflows/deploy.yml`) on push to `master`. In the repo's Settings > Pages, set Source to **GitHub Actions**.

## Structure

```
_bibliography/papers.bib   # Publications (BibTeX, rendered by jekyll-scholar)
_news/                     # News/announcements shown on the home page
_pages/about.md            # Home page content
_posts/                    # Blog posts
assets/json/resume.json    # CV data (JSON Resume format)
assets/img/prof_pic.jpg    # Profile photo
assets/pdf/                # Paper PDFs, CV
_config.yml                # Site configuration
```

## Adding content

**New publication:** Add a BibTeX entry to `_bibliography/papers.bib`. Use `abbr`, `selected`, `pdf`, `html`, `arxiv` fields for al-folio features.

**New news item:** Create `_news/YYYY_MM_slug.md` with front matter `date`, `inline: true`, and a one-line announcement.

**New blog post:** Create `_posts/YYYY-MM-DD-slug.md` with `layout: post`, `title`, `date`, `description`, and `tags` in the front matter.

**CV updates:** Edit `assets/json/resume.json` (follows [JSON Resume](https://jsonresume.org/) schema).

## Notes

- `imagemagick` is disabled in `_config.yml` for local dev (set `enabled: true` after installing ImageMagick)
- `classifier-reborn` and `mini_racer` are commented out in the Gemfile (not needed for local dev; GitHub Actions installs them)
- Sass deprecation warnings are cosmetic and come from upstream al-folio dependencies
