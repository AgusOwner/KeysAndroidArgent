.class Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileIterator$1;
.super Ljava/lang/Object;
.source "ClassFileIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileIterator;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;",
        ">;"
    }
.end annotation


# instance fields
.field next:Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;

.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileIterator;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileIterator;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileIterator$1;->this$0:Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-interface {p1}, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileIterator;->getNextClassFile()Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileIterator$1;->next:Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileIterator$1;->next:Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileIterator$1;->next()Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;
    .locals 2

    .line 52
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileIterator$1;->next:Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;

    if-eqz v0, :cond_0

    .line 58
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileIterator$1;->this$0:Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileIterator;

    invoke-interface {v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileIterator;->getNextClassFile()Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileIterator$1;->next:Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;

    return-object v0

    .line 53
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
