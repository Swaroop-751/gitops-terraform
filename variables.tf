variable "iam_users" {
  description = "Users who need access"
  type        = list(string)

  default = [
    "user:kaiwalya.joshi@searce.com",
    "user:pranav.sonar@searce.com",
    "user:rishikesh.ghodke@searce.com",
    "user:soumitra.utturkar@searce.com"
  ]
}

variable "project_id" {
  description = "The ID of the GCP project"
  type        = string
  default     = "project-07b2981c-18fb-4fa4-acd"
}