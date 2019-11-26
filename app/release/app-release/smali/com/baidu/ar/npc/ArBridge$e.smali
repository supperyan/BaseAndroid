.class public final enum Lcom/baidu/ar/npc/ArBridge$e;
.super Ljava/lang/Enum;
.source "ArBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/ar/npc/ArBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/ar/npc/ArBridge$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/ar/npc/ArBridge$e;

.field public static final enum b:Lcom/baidu/ar/npc/ArBridge$e;

.field public static final enum c:Lcom/baidu/ar/npc/ArBridge$e;

.field public static final enum d:Lcom/baidu/ar/npc/ArBridge$e;

.field public static final enum e:Lcom/baidu/ar/npc/ArBridge$e;

.field private static final synthetic f:[Lcom/baidu/ar/npc/ArBridge$e;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 72
    new-instance v0, Lcom/baidu/ar/npc/ArBridge$e;

    const/4 v1, 0x0

    const-string v2, "SCREEN_ORIENTATION_PORTRAIT"

    invoke-direct {v0, v2, v1}, Lcom/baidu/ar/npc/ArBridge$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/ar/npc/ArBridge$e;->a:Lcom/baidu/ar/npc/ArBridge$e;

    .line 73
    new-instance v0, Lcom/baidu/ar/npc/ArBridge$e;

    const/4 v2, 0x1

    const-string v3, "SCREEN_ORIENTATION_LANDSCAPE"

    invoke-direct {v0, v3, v2}, Lcom/baidu/ar/npc/ArBridge$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/ar/npc/ArBridge$e;->b:Lcom/baidu/ar/npc/ArBridge$e;

    .line 74
    new-instance v0, Lcom/baidu/ar/npc/ArBridge$e;

    const/4 v3, 0x2

    const-string v4, "SCREEN_ORIENTATION_REVERSE_PORTRAIT"

    invoke-direct {v0, v4, v3}, Lcom/baidu/ar/npc/ArBridge$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/ar/npc/ArBridge$e;->c:Lcom/baidu/ar/npc/ArBridge$e;

    .line 75
    new-instance v0, Lcom/baidu/ar/npc/ArBridge$e;

    const/4 v4, 0x3

    const-string v5, "SCREEN_ORIENTATION_REVERSE_LANDSCAPE"

    invoke-direct {v0, v5, v4}, Lcom/baidu/ar/npc/ArBridge$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/ar/npc/ArBridge$e;->d:Lcom/baidu/ar/npc/ArBridge$e;

    .line 76
    new-instance v0, Lcom/baidu/ar/npc/ArBridge$e;

    const/4 v5, 0x4

    const-string v6, "SCREEN_ORIENTATION_NOT_DEFINED"

    invoke-direct {v0, v6, v5}, Lcom/baidu/ar/npc/ArBridge$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/ar/npc/ArBridge$e;->e:Lcom/baidu/ar/npc/ArBridge$e;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/baidu/ar/npc/ArBridge$e;

    .line 71
    sget-object v6, Lcom/baidu/ar/npc/ArBridge$e;->a:Lcom/baidu/ar/npc/ArBridge$e;

    aput-object v6, v0, v1

    sget-object v1, Lcom/baidu/ar/npc/ArBridge$e;->b:Lcom/baidu/ar/npc/ArBridge$e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/ar/npc/ArBridge$e;->c:Lcom/baidu/ar/npc/ArBridge$e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/ar/npc/ArBridge$e;->d:Lcom/baidu/ar/npc/ArBridge$e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/ar/npc/ArBridge$e;->e:Lcom/baidu/ar/npc/ArBridge$e;

    aput-object v1, v0, v5

    sput-object v0, Lcom/baidu/ar/npc/ArBridge$e;->f:[Lcom/baidu/ar/npc/ArBridge$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/ar/npc/ArBridge$e;
    .registers 2
    .parameter

    .line 71
    const-class v0, Lcom/baidu/ar/npc/ArBridge$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/ar/npc/ArBridge$e;

    return-object p0
.end method

.method public static values()[Lcom/baidu/ar/npc/ArBridge$e;
    .registers 1

    .line 71
    sget-object v0, Lcom/baidu/ar/npc/ArBridge$e;->f:[Lcom/baidu/ar/npc/ArBridge$e;

    invoke-virtual {v0}, [Lcom/baidu/ar/npc/ArBridge$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/ar/npc/ArBridge$e;

    return-object v0
.end method
