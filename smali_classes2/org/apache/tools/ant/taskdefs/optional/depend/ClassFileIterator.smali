.class public interface abstract Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileIterator;
.super Ljava/lang/Object;
.source "ClassFileIterator.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getNextClassFile()Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileIterator$1;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileIterator$1;-><init>(Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileIterator;)V

    return-object v0
.end method
