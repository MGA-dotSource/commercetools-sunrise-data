cat > "importApp/travis-payload.json" << EOF
{
  "commercetools": {
    "projectKey": "$PROJECT_KEY",
    "clientId": "$CLIENT_ID",
    "clientSecret": "$CLIENT_SECRET",
    "authUrl": "https://auth.sphere.io",
    "apiUrl": "https://api.sphere.io"
  },
  "jobs": [
    {
      "name": "productsDeleteJob"
    },
    {
      "name": "categoriesDeleteJob"
    },
    {
      "name": "productTypesDeleteJob"
    },
    {
      "name": "productTypeCreateJob",
      "resource": "file://$ROOT_PROJ/product-types/product-types.json"
    },
    {
      "name": "categoriesCreateJob",
      "resource": "file://$ROOT_PROJ/categories/categories.csv"
    },
    {
      "name": "productsCreateJob",
      "maxProducts": 4000,
      "resource": "file://$ROOT_PROJ/products/products.csv"
    }
  ]
}
EOF