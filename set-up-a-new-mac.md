# Set up a new Mac

1. Install Chrome

2. Install Sublime Text

```bash
$ mkdir /usr/local/bin
$ ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
```

3. Install iTerm2

	a. Go to Preferences > Profiles > Keys

	b. Check the radio box for `Left Option Key: Esc+`

	c. Edit the key mappings for:

		1. Alt + Left: Send escape sequence b

		2. Alt + Right: Send escape sequence f

		3. Cmd + Left: Send hex code 0x01

		4. Cmd + Right: Send hex code 0x05

		5. Alt + Delete: Send hex code 0x1B 0x08 (also, edit environment variable WORDCHARS to exclude forward slashes)

		6. Cmd + Delete: Send hex code 0x18 0x7f (https://stackoverflow.com/a/32340345)

4. Install Docker Desktop

5. Install GCloud SDK

	a. https://cloud.google.com/sdk/docs/downloads-interactive

```bash
$ curl https://sdk.cloud.google.com | bash
$ exec -l $SHELL
$ gcloud init
$ gcloud auth configure-docker
```

6. Set Git user information

```bash
$ git config --global user.name "Natan Weinberger"
$ git config --global user.email "my@email.com"
```
