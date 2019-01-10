# Describe the difference between ! and ? in Ruby. And explain what would happen
# in the following scenarios.
# These both can be used as the end of method names and don't specify anything
# with regards to syntax. Using them before objects would
# be used for if,else and not equals in the majority of cases.

# 1. what is != and where should you use it?
# != is the not equals. It is used to verify if something is not equal
# to something else.

# 2. put ! before something, like !user_name
# This would test if the variable is opposite of its boolean default.

# 3. put ! after something, like words.uniq!
# This would mutate the object the method was called on.

# 4. put ? before something
# This would start an if/else

# 5. put ? after something
# This would depend on the thing it was put on. It is specific to methods.

# 6. put !! before something, like !!user_name
# This would turn the object into its boolean default.
