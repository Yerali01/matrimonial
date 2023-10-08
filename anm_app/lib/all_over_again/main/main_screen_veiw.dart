import 'package:anm_app/all_over_again/main/main_screen_controller.dart';
import 'package:anm_app/all_over_again/provider/appwrite_constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:anm_app/all_over_again/tabs/tabs_page_controller.dart';
import 'package:get/get.dart';

class MainScreenView extends GetView<MainScreenController> {
  MainScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Matrimonial App"),
        actions: [
          IconButton(
            onPressed: () {
              Get.find<TabsPageController>().logout();
            },
            icon: const Icon(Icons.logout_outlined),
          ),
        ],
      ),
      body: Get.find<MainScreenController>().obx(
        (state) => ListView.separated(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              height: 10,
              color: Colors.grey,
            );
          },
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: SizedBox(
                width: 100,
                height: 100,
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl:
                      '${AppWriteConstants.endPoint}/storage/buckets/${AppWriteConstants.usersBucketId}/files/65204e7c0a97a18c7961/view?project=${AppWriteConstants.projectId}',
                  placeholder: (context, url) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  errorWidget: (context, url, error) => const Icon(
                    Icons.error,
                    color: Colors.grey,
                  ),
                ),
              ),
              title: Text(
                state[index].first_name.isNull ? " " : state[index].first_name!,
              ),
              subtitle: Text(
                state[index].middle_name.isNull
                    ? " "
                    : state[index].middle_name!,
              ),
            );
          },
          itemCount: state!.length,
        ),
        onLoading: const Center(child: CircularProgressIndicator()),
        onError: (error) => Center(
          child: Text(error!),
        ),
        onEmpty: const Center(
          child: Text("No posts were found"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.moveToCreateForm();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
