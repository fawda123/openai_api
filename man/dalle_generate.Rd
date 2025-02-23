% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dalle_api.R
\name{dalle_generate}
\alias{dalle_generate}
\title{dalle_generate}
\usage{
dalle_generate(
  api_key,
  prompt,
  n = 1,
  size = "1024x1024",
  path_to_save = "C:/your/path"
)
}
\arguments{
\item{api_key}{A string containing the API key for authentication.}

\item{prompt}{A string that serves as the prompt based on which the image will be generated.}

\item{n}{An integer indicating the number of images to generate. Defaults to 1.}

\item{size}{A string defining the size of the generated image in the format "widthxheight". Defaults to "1024x1024".}

\item{path_to_save}{A string specifying the path where the images should be saved. Defaults to "C:/Users/JChas/OneDrive/Desktop/repo_functions".}
}
\value{
A list containing the result of the API call. If the API call is successful and contains URLs of generated images, those images are also downloaded and saved to the specified path.
}
\description{
This function handles API calls to generate and download images based on given prompts.
It uses a provided API key to authenticate and then makes a POST request to the "images/generations" endpoint.
If the API call is successful and the returned data contains image URLs, it downloads the images and saves them to the provided location.
It also updates a global dataframe, \code{prompts_df}, with the prompt and the timestamp.
}
\examples{
\dontrun{
api_key <- "your_api_key_here"
prompt <- "A sunset over the mountains"
n <- 2
size <- "1024x1024"
path_to_save <- "C:/your/path"
result <- dalle_generate(api_key, prompt, n, size, path_to_save)
}
}
