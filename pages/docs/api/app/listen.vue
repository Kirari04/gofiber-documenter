<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🚀 App - Listen</H1>
            <P> Listen serves HTTP requests from the given address. </P>
            <div class="alert alert-info mb-6">
                <Icon icon="info" />
                <span>
                    Ports lower than 1024 are usually reserved for
                    Administrators. Thats why it is recommended to choose a port
                    in the range of 1025-65535
                </span>
            </div>
            <Code path="/snippets/app-listen-1" />
            <P>Example behavior of <B>Listen</B></P>
            <Code path="/snippets/app-listen-2" />
            <div class="flex basis-full"></div>
        </div>
        <SubMenu :menu-items="subMenuApp" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuApp" />
</template>

<script lang="ts" setup>
const title = "Fiber | 🚀 App - Listen";
const description = "Listen serves HTTP requests from the given address.";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
