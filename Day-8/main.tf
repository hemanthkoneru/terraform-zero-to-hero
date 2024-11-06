provider "aws" {
    region = us-east-1
  
}

import {
  id = "i-0f8d3fe8c00bff7d6" ### modify id as per your requirement

  to = aws_instance.example
}
