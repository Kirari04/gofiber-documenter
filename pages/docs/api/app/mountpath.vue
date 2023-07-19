<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🚀 App - MountPath</H1>
            <P>
                The <B>MountPath</B> property contains one or more path patterns
                on which a sub-app was mounted.
            </P>
            <Code path="/snippets/app-mountpath-1" />
            <P> Here an example where multiple fiber apps are mounted. </P>
            <Code path="/snippets/app-mountpath-2" />
            <div class="alert alert-warning my-6">
                <Icon icon="warning" />
                <span>
                    <B>CAUTION</B>: Mounting order is important for MountPath.
                    If you want to get mount paths properly, you should start
                    mounting from the deepest app.
                </span>
            </div>

            <div class="flex basis-full"></div>
        </div>
        <SubMenu :menu-items="subMenuApp" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuApp" />
</template>

<script lang="ts" setup>
const title = "Fiber | 🚀 App - MountPath";
const description =
    "The MountPath property contains one or more path patterns on which a sub-app was mounted.";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
