.class public final synthetic Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/Project;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/Project;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda1;->f$0:Lorg/apache/tools/ant/Project;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda1;->f$0:Lorg/apache/tools/ant/Project;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/Main;->lambda$setProperties$5(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
