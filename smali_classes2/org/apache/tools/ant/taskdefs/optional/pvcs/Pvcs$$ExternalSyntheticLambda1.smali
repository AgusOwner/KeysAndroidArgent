.class public final synthetic Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic f$0:Ljava/io/BufferedReader;


# direct methods
.method public synthetic constructor <init>(Ljava/io/BufferedReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs$$ExternalSyntheticLambda1;->f$0:Ljava/io/BufferedReader;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs$$ExternalSyntheticLambda1;->f$0:Ljava/io/BufferedReader;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->lambda$massagePCLI$1(Ljava/io/BufferedReader;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
