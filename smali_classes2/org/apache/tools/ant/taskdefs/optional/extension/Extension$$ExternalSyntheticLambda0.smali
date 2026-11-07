.class public final synthetic Lorg/apache/tools/ant/taskdefs/optional/extension/Extension$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Ljava/util/jar/Attributes$Name;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/jar/Attributes$Name;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension$$ExternalSyntheticLambda0;->f$1:Ljava/util/jar/Attributes$Name;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension$$ExternalSyntheticLambda0;->f$1:Ljava/util/jar/Attributes$Name;

    check-cast p1, Ljava/util/jar/Attributes;

    invoke-static {v0, v1, p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->lambda$getListed$2(Ljava/util/List;Ljava/util/jar/Attributes$Name;Ljava/util/jar/Attributes;)V

    return-void
.end method
