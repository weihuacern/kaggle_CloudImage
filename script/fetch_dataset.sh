# Fetch kaggle data through kaggle api
function fetch_kaggle_dataset {
  export KAGGLE_USERNAME=huaweicern
  export KAGGLE_KEY=2565d20c7dbc34c1ddb4baf3d248e660
  mkdir -p ../data
  pushd ../data
  kaggle competitions download -c $1
  unzip understanding_cloud_organization.zip
  rm -f understanding_cloud_organization.zip
  chmod 555 sample_submission.csv
  chmod 555 train.csv
  chmod 555 train_images.zip
  mkdir -p train_images
  unzip -d train_images train_images.zip
  rm -f train_images.zip
  chmod 555 test_images.zip
  mkdir -p test_images
  unzip -d test_images test_images.zip
  rm -f test_images.zip
  popd
}

fetch_kaggle_dataset understanding_cloud_organization
