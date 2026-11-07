.class public final synthetic Lorg/apache/tools/ant/util/optional/JavaxScriptRunner$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljavax/script/Bindings;


# direct methods
.method public synthetic constructor <init>(Ljavax/script/Bindings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner$$ExternalSyntheticLambda2;->f$0:Ljavax/script/Bindings;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/util/optional/JavaxScriptRunner$$ExternalSyntheticLambda2;->f$0:Ljavax/script/Bindings;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljavax/script/Bindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
