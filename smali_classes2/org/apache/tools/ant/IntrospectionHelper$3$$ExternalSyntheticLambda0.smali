.class public final synthetic Lorg/apache/tools/ant/IntrospectionHelper$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lorg/apache/tools/ant/IntrospectionHelper$3;->$r8$lambda$3xarQn9-01mX0ryMDVLUOUVo4mo(I)Ljava/util/OptionalInt;

    move-result-object p1

    return-object p1
.end method
