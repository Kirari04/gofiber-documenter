<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🚀 App - Group</H1>
            <P> You can group routes by creating a <B>*Group</B> struct. </P>
            <div class="alert alert-info mb-6">
                <Icon icon="info" />
                <span>
                    In general, the Group functionality in Fiber behaves
                    similarly to ExpressJS. Groups are declared virtually and
                    all routes declared within the group are flattened into a
                    single list with a prefix, which is then checked by the
                    framework in the order it was declared. This means that the
                    behavior of Group in Fiber is identical to that of
                    ExpressJS.
                </span>
            </div>
            <Code path="/snippets/app-group-1" />
            <P> Simple example of an api with to versions. </P>
            <Code path="/snippets/app-group-2" />
            <div class="flex basis-full"></div>
        </div>
        <SubMenu :menu-items="subMenuApp" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuApp" />
</template>

<script lang="ts" setup>
const title = "Fiber | 🚀 App - Group";
const description = "You can group routes by creating a *Group struct.";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
