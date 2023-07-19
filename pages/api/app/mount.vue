<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🚀 App - Mount</H1>
            <P> You can Mount Fiber instance by creating a *Mount </P>
            <Code path="/snippets/app-mount-1" />
            <P>Example with Mount</P>
            <Code path="/snippets/app-mount-2" />
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
const title = "Fiber | 🚀 App - Mount";
const description = "You can Mount Fiber instance by creating a *Mount";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
