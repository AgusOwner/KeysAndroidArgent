.class public interface abstract Lorg/apache/tools/ant/BuildLogger;
.super Ljava/lang/Object;
.source "BuildLogger.java"

# interfaces
.implements Lorg/apache/tools/ant/BuildListener;


# virtual methods
.method public getMessageOutputLevel()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public abstract setEmacsMode(Z)V
.end method

.method public abstract setErrorPrintStream(Ljava/io/PrintStream;)V
.end method

.method public abstract setMessageOutputLevel(I)V
.end method

.method public abstract setOutputPrintStream(Ljava/io/PrintStream;)V
.end method
