const String getProducts = """
query {
  products {
    id
    title
    description
    price
    images
  }
}
""";

const String addProduct = """
mutation createProduct(
    \$title: String!, 
    \$price: Float!, 
    \$description: String!,
    \$categoryId: Float!,
    \$images: [String!]!
) {
    addProduct(
      data: {
        title: \$title
        price: \$price
        description: \$description
        categoryId: \$categoryId
        images: \$images
      }
    ) {
      id
      title
      price
    }
}
""";

const String editProduct = """
mutation editProduct(
    \$id: ID!, 
    \$title: String!, 
    \$price: Float!, 
    \$description: String!,
) {
    updateProduct(
      id: \$id
      changes: {
        title: \$title
        price: \$price
        description: \$description
      }
    ) {
      id
      title
      price
      description
    }
}
""";

const String deleteProduct = """
mutation deleteProduct(
    \$id: ID!
) {
    deleteProduct(
      id: \$id
    )
}
""";
