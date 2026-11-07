.class public interface abstract Lorg/apache/tools/ant/ArgumentProcessor;
.super Ljava/lang/Object;
.source "ArgumentProcessor.java"


# virtual methods
.method public abstract handleArg(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract handleArg(Lorg/apache/tools/ant/Project;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/Project;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract prepareConfigure(Lorg/apache/tools/ant/Project;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/Project;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract printUsage(Ljava/io/PrintStream;)V
.end method

.method public abstract readArguments([Ljava/lang/String;I)I
.end method
