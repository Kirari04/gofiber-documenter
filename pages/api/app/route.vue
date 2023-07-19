<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🚀 App - Route</H1>
            <P>
                You can define routes with a common prefix inside the common
                function.
            </P>
            <Code path="/snippets/app-route-1" />
            <P
                >Simple example using <B>Route</B> to add two routes to the api
            </P>
            <Code path="/snippets/app-route-2" />
            <div class="flex basis-full"></div>
        </div>
        <SubMenu :menu-items="subMenuApp" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuApp" />
</template>

<script lang="ts" setup>
const title = "Fiber | 🚀 App - Route";
const description =
    "You can define routes with a common prefix inside the common function.";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
