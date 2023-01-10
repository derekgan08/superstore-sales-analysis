#import all csv data
setwd("D:/Download/")
super_store_orders = read.csv('SuperStoreOrders.csv')
summary(super_store_orders)

#-----------Q8A----------
#rename columns and change to correct data type
super_store_orders$Order.Id = super_store_orders$order_id
super_store_orders$Order.Date = as.Date(super_store_orders$order_date, format = "%m/%d/%y")
super_store_orders$Ship.Date = as.Date(super_store_orders$ship_date)
super_store_orders$Ship.Mode = as.factor(super_store_orders$ship_mode)
super_store_orders$Customer.Name = super_store_orders$customer_name
super_store_orders$Segment = as.factor(super_store_orders$segment)
super_store_orders$State = as.factor(super_store_orders$state)
super_store_orders$Country = as.factor(super_store_orders$country)
super_store_orders$Market = as.factor(super_store_orders$market)
super_store_orders$Region = as.factor(super_store_orders$region)
super_store_orders$Product.Id = super_store_orders$product_id
super_store_orders$Category = as.factor(super_store_orders$category)
super_store_orders$Sub.Category = as.factor(super_store_orders$sub_category)
super_store_orders$Product.Name = super_store_orders$product_name
super_store_orders$Sales = as.integer(super_store_orders$sales)
super_store_orders$Quantity = super_store_orders$quantity
super_store_orders$Discount = super_store_orders$discount
super_store_orders$Profit = super_store_orders$profit
super_store_orders$Shipping.Cost = super_store_orders$shipping_cost
super_store_orders$Order.Priority = as.factor(super_store_orders$order_priority)
super_store_orders$Year = as.factor(super_store_orders$year)

#remove old columns and print summary of new columns
super_store_orders = super_store_orders[, -(1:21)]
summary(super_store_orders)

#-----------Q8B----------
#get 1000 instances
super_store_orders = super_store_orders[1:1000, ]
summary(super_store_orders)

#import ggplot2 library
library(ggplot2)

#-----------Q9A----------
segment_category_table = table(super_store_orders$Segment, super_store_orders$Category)
segment_category_table

ggplot(as.data.frame(segment_category_table), aes(x=Var1, y = Freq, fill=Var2)) + 
  geom_bar(stat="identity", position="dodge") + 
  xlab('Segment') + 
  ylab('Category') + 
  labs(fill = "Category", title = "Category based on Segments")

#-----------Q9B----------
sub_category_table = table(super_store_orders$Sub.Category)
ggplot(as.data.frame(sub_category_table), aes(x=reorder(Var1, -Freq), y = Freq)) + 
  geom_bar(stat="identity") + 
  xlab('Sub.Category') + 
  ylab('Frequency') + 
  labs(title = "Frequency of Sub Categories")

#-----------Q9C----------
sub_category_vs_category_table = table(super_store_orders$Sub.Category, super_store_orders$Category)
barplot(sub_category_vs_category_table, beside = T,xlab="Category", ylab="Frequency", ylim=c(0, 150), main="Frequency of Sub Categories in Each Categories", legend = T, args.legend = list(cex=0.9), col=rainbow(17))

#-----------Q9D----------
country_table = table(super_store_orders$Country)
ggplot(as.data.frame(country_table), aes(x=reorder(Var1, -Freq), y = Freq)) + 
  geom_bar(stat="identity") + 
  xlab('Countries') + 
  ylab('Frequency') + 
  labs(title = "Frequency of Countries") + 
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))

#-----------Q10----------
#1
market_table = table(super_store_orders$Market)
ggplot(as.data.frame(market_table), aes(x=reorder(Var1, -Freq), y = Freq)) + 
  geom_bar(stat="identity") + 
  xlab('Market') + 
  ylab('Frequency') + 
  labs(title = "Frequency of Markets")


#2
mean_shipping_cost_market = aggregate(super_store_orders$Shipping.Cost, list(super_store_orders$Market), FUN=mean)
barplot(height=mean_shipping_cost_market$x, names=mean_shipping_cost_market$Group.1, ylim=c(0, 40), main="Means of Shipping Cost in Different Market")

# 3
market_category_table = table(super_store_orders$Market, super_store_orders$Category)
ggplot(as.data.frame(market_category_table), aes(x=Var1, y = Freq, fill=Var2)) + 
  geom_bar(stat="identity", position="dodge") + 
  xlab('Market') + 
  ylab('Category') + 
  labs(fill = "Category", title = "Frequency of Category in Different Market")

#4
mean_profit_market = aggregate(super_store_orders$Profit, list(super_store_orders$Market), FUN=mean)
barplot(height=mean_profit_market$x, names=mean_profit_market$Group.1, ylim=c(0, 40), main="Means of Profit in Different Market")
