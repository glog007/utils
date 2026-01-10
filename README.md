# Utils

## Deployment

### GitHub Pages
This site is automatically deployed to GitHub Pages on every push to `main`.
URL: https://glog007.github.io/utils/healing_b.html

### Google Cloud (App Engine)
To deploy to Google Cloud App Engine:

1. Install the [Google Cloud SDK](https://cloud.google.com/sdk/docs/install).
2. Initialize your project:
   ```bash
   gcloud init
   ```
3. Deploy the app:
   ```bash
   gcloud app deploy
   ```
4. View the app:
   ```bash
   gcloud app browse
   ```
