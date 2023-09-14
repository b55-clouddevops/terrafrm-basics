# calling ec2Module
module "ec2" {
    source      = "./ec2"
    sg          = module.sg.sgid                     # Step 2 : Passing the info the module that needs this variable over the root module
}

# calling sgModule
module "sg" {
    source      = "./sg"
}