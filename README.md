# sysd_r
Testing and debugging systemd files with using dummy ruby services.

## Usage
Either use one of the dummy services or change the service you want to test to execute either the oneshot or simple ruby script.  The observations text will be written in the working directory specified by the service.

1. Copy `dummy-oneshot@.service` into `/etc/systemd/system`
2. Modify it so that 
`ExecStart=/home/grosscol/.rbenv/shims/ruby /home/grosscol/workspace/sysd_r/dummy-oneshot.rb %i` points to your ruby and `dummy-oneshot.rb` in wherever you cloned this repo.
3. Tell systemd to start the service: `systemctl dummy-oneshot@foo.service`
4. Check out the observations file in sysd_r/
