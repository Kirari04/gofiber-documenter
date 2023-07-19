<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>Static files</H1>
            <P>
                To serve static files such as <B>images</B>, <B>CSS</B>, and
                <B>JavaScript</B> files, replace your function handler with a
                file or directory string.
            </P>
            <P> Route definition takes the following structures: </P>
            <Code path="/snippets/static-files-1" />
            <ul class="list-disc p-4">
                <li><Tag>app</Tag> is an instance of Fiber</li>
                <li>
                    <Tag>root</Tag> is the local folder that contains your
                    static files
                </li>
                <li><Tag>config</Tag> contains the configuration</li>
            </ul>

            <P>
                Use the following code to serve files in a directory named
                <Tag>./public</Tag>:</P
            >
            <Code path="/snippets/static-files-2" />

            <P>
                Now, you can request the files that are in the
                <Tag>./public</Tag> directory:
            </P>
            <Code path="/snippets/static-files-3" />
        </div>
        <SubMenu :menu-items="subMenuWelcome" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuWelcome" />
</template>

<script lang="ts" setup>
const title = "Fiber | Static files";
useSeoMeta({
    title: title,
    ogTitle: title,
});
</script>
