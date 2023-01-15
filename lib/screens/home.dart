import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:samplebloc/cubit/product.dart';
import 'package:samplebloc/screens/components/custom_button.dart';

import '../cubit/product_cubit.dart';
import 'components/reusable_textfield.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Sample"),
      ),
      body: SafeArea(
        child: BlocBuilder<ProductCubit, ProductState>(
          builder: (context, state) {
            var ctrl  = context.read<ProductCubit>();
            return Column(
              children: [
                const SizedBox(height: 20,),
                ReuseableTextField(hintText: 'price', controller: ctrl.priceController,),
                const SizedBox(height: 20,),
                ReuseableTextField(hintText: 'qty', controller:ctrl.qtyController),
                const SizedBox(height: 20),

                state is ProductUpdatedState ? Text('${state.product!.total}', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),) : const SizedBox.shrink(),

                const SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CustomButton(icon: const Icon(Icons.add_box, color: Colors.white,), label: "Next", ontap: (){
                    print("hello");
                    ctrl.calc();
                  }),
                )
              ],
            );
          }
        ),
      ),
    );
  }
}
