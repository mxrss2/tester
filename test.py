import pygit2
print bool(pygit2.features & pygit2.GIT_FEATURE_HTTPS)
print bool(pygit2.features & pygit2.GIT_FEATURE_SSH)