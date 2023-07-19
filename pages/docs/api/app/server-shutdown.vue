<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🚀 App - Server Shutdown</H1>
            <ul class="list-disc p-6">
                <li>
                    <Tag>Shutdown</Tag> gracefully shuts down the server without
                    interrupting any active connections. Shutdown works by first
                    closing all open listeners and then waits indefinitely for
                    all connections to return to idle before shutting down.
                </li>
                <li>
                    <Tag>ShutdownWithTimeout</Tag> will forcefully close any
                    active connections after the timeout expires.
                </li>
                <li>
                    <Tag>ShutdownWithContext</Tag> shuts down the server
                    including by force if the context's deadline is exceeded.
                </li>
            </ul>
            <Code path="/snippets/app-server-shutdown-1" />
            <P>
                This shows how to implement a graceful shutdown with Fiber and
                the <Tag>os/signal</Tag> package.
            </P>
            <P>
                This example relies on the use of channels, a data type in Go
                that allows you to send and receive data to/from specific places
                in an application.
            </P>
            <P>
                A channel is created, and registered with
                <B>signal.Notify</B> so that when the program receives an
                interrupt (for example, when CTRL+C is pressed), a notification
                is sent to the channel. Once this is received,
                <Tag>app.Shutdown</Tag> is called to close all active
                connections and return from <Tag>app.Listen</Tag>. After this
                point, cleanup functions can be run and the program eventually
                quits.
            </P>
            <Code path="/snippets/app-server-shutdown-2" />
            <div class="flex basis-full"></div>
        </div>
        <SubMenu :menu-items="subMenuApp" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuApp" />
</template>

<script lang="ts" setup>
const title = "Fiber | 🚀 App - Server Shutdown";
const description =
    "Shutdown gracefully shuts down the server without interrupting any active connections. Shutdown works by first closing all open listeners and then waits indefinitely for all connections to return to idle before shutting down.";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
