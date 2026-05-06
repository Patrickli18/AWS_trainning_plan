terraform {
  required_version = ">= 0.15"
}

variable "words" {
    description = "A word pool to use for Mad Libs"
    type = object({
        noun = list(string),
        adjective = list(string),
        verbs = list(string),
        adverbs = list(string),
        numbers = list(string),
    })
  }
}