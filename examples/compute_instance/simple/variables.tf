/**
 * Copyright 2018 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "credentials_path" {
  description = "The path to the GCP credentials JSON file"
  default = "credentials.json"
}

variable "project_id" {
  description = "The GCP project to use for integration tests"
  default = "jenkins-123-264620"
}

variable "region" {
  description = "The GCP region to create and test resources in"
  default = "us-central1"
}

variable "subnetwork" {
  description = "The subnetwork to host the compute instances in"
  default = "default"
}

variable "num_instances" {
  description = "Number of instances to create"
  default = "1"
}

// variable "service_account" {
//   type        = "map"
//   description = "Service account email address and scopes"
//   default = ["terraform-service-account@jenkins-123-264620.iam.gserviceaccount.com","compute-ro", "storage-ro" ]
// }

variable "service_account" {
  
  description = "Service account to attach to the instance. See https://www.terraform.io/docs/providers/google/r/compute_instance_template.html#service_account."
   default = 
   {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}
