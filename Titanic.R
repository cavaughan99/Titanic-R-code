# Check out the structure of titanic
str(titanic)

ggplot(titanic, aes(factor(Pclass), fill = factor(Sex))) +
        geom_bar(position = "dodge")

ggplot(titanic, aes(factor(Pclass), fill = factor(Sex))) +
        geom_bar(position = "dodge") + facet_grid(". ~ Survived")

# Position jitter (use below)
posn.j <- position_jitter(0.5, 0)

ggplot(titanic, aes(x = factor(Pclass), y = Age, col = factor(Sex))) +
        geom_jitter(size = 3, alpha = .5, position = posn.j) + 
        facet_grid(". ~ Survived")
