<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>Installation</H1>
            <P>
                First of all, download and install Go.
                <Tag>1.17</Tag> or higher is required.
            </P>
            <P> Installation is done using the <Tag>go get</Tag> command: </P>

            <Code path="/snippets/installation" />
        </div>
        <SubMenu :menu-items="subMenuWelcome" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuWelcome" />
</template>

<script lang="ts" setup>
const title = "Fiber | Installation";
const description =
    "First of all, download and install Go. 1.17 or higher is required. Installation is done using the go get command:";
useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
