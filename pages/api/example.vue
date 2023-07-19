<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🚀 App - xxx</H1>
            <P> xxx </P>
            <div class="alert alert-info mb-6">
                <Icon icon="info" />
                <span> xxxx </span>
            </div>
            <Code path="/snippets/app-xxxx-1" />
            <div class="flex basis-full"></div>
        </div>
        <SubMenu :menu-items="subMenuApp" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuApp" />
</template>

<script lang="ts" setup>
const title = "Fiber | 🚀 App - xxx";
const description = "xxx";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
