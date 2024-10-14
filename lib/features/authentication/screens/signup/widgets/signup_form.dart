import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/signup/verify_email.dart';
import 'package:t_store/features/authentication/screens/signup/widgets/terms_and_conditions.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Form(child:
      Column(
          
          children: [
            Row(
              children: [
                //FirstName
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                      labelText: TTexts.firstName,
                      prefixIcon: Icon(Iconsax.user),
                    )
                  ),
                ),
    
                const SizedBox(width: TSizes.spaceBtwInputFields),
    
                //LastName
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                      labelText: TTexts.lastName,
                      prefixIcon: Icon(Iconsax.user),
                    )
                  ),
                ),
            ],),
    
            const SizedBox(height: TSizes.spaceBtwInputFields),
    
            //Username
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                labelText: TTexts.username,
                prefixIcon: Icon(Iconsax.user_edit),
              )
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),
    
            //email
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                labelText: TTexts.email,
                prefixIcon: Icon(Iconsax.direct),
              )
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),
    
            //Phone Number
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                labelText: TTexts.phoneNumber,
                prefixIcon: Icon(Iconsax.call),
              )
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),
    
            // Password
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
                labelText: TTexts.password,
        
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),
    
            // Terms&Conditions Checkbox
            TTermsAndConditionsCheckbox(),
    
            const SizedBox(height: TSizes.spaceBtwSections),
    
            //Sign Up Button
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => VerifyEmailScreen()), child: const Text(TTexts.createAccount)),)
    
        ],
    
      ),
    );
  }
}

