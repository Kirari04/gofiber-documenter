<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🚀 App - Static</H1>
            <P>
                Use the <B>Static</B> method to serve static files such as
                images, CSS, and JavaScript.
            </P>
            <div class="alert alert-info mb-6">
                <Icon icon="info" />
                <span>
                    By default, <B>Static</B> will serve index.html files in
                    response to a request on a directory.
                </span>
            </div>
            <Code path="/snippets/app-static-1" />
            <P>
                Use the following code to serve files in a directory named
                <Tag>./public</Tag>
            </P>
            <Code path="/snippets/app-static-2" />
            <P> Serve files from multiple directories example </P>
            <Code path="/snippets/app-static-3" />
            <P>
                You can use any virtual path prefix (where the path does not
                actually exist in the file system) for files that are served by
                the Static method, specify a prefix path for the static
                directory, as shown below:
            </P>
            <Code path="/snippets/app-static-4" />
            <P>
                If you want to have a little bit more control regarding the
                settings for serving static files. You could use the
                <Tag>fiber.Static</Tag> struct to enable specific settings.
            </P>
            <Code path="/snippets/app-static-5" />
            <P> Example implementation </P>
            <Code path="/snippets/app-static-6" />
            <div class="flex basis-full"></div>
        </div>
        <SubMenu :menu-items="subMenuApp" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuApp" />
</template>

<script lang="ts" setup>
const title = "Fiber | 🚀 App - Static";
const description =
    "Use the Static method to serve static files such as images, CSS, and JavaScript.";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
