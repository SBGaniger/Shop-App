import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'cart_provide.dart';

class  CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart=Provider.of<CartProvider>(context).cart;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        centerTitle: true,
      ),
    body: ListView.builder(
      itemCount: cart.length,
        itemBuilder: (context,index){
        final cartItem=cart[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(cartItem['imageUrl'].toString()),
            radius: 30,
          ),
          trailing: IconButton(
            onPressed: (){
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Delete Product',
                    style: Theme.of(context).textTheme.titleMedium,),
                    content: Text('Are you sure you want to delete this product?',
                    style: Theme.of(context).textTheme.bodySmall,),
                    actions: [
                      TextButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                  child: const Text('No',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                      ),
                      TextButton(
                      onPressed: (){
                        Provider.of<CartProvider>(context,listen: false).removeProduct(index);
                        Navigator.pop(context);
                      },
                  child: const Text('Yes',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                    ),
                  )
                    ],
                  );
                }
             );
            },
            icon: const Icon(Icons.delete,color: Colors.red,),
          ),
          title: Text(cartItem['title'].toString(),
          style: Theme.of(context).textTheme.bodySmall),
          subtitle: Text('Size: ${cartItem['sizes']}'),
        );

        }
    ),
    );
  }
}
